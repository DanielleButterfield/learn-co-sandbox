fetch("http://localhost:3000/likes")
  .then(response => response.json())
  .then(likes => likesCounter(likes))

fetch("http://localhost:3000/comments")
  .then(response => response.json())
  .then(comments => listComments(comments))


const cform = document.querySelector("#submit-comment")
const cbox = document.querySelector("#comment-box")
const lform = document.querySelector("#likes")


function likesCounter(likes) {
  const likesCount = document.querySelector("#likes-count")
  likesCount.innerText = likes[0].count
}
  
function listComments(comments) {
  const commentsList = document.querySelector("#comments")
  comments.forEach(comment => {
    let item = document.createElement("li")
    item.innerText = comment.content
    commentsList.appendChild(item)
  })
}

cform.addEventListener("submit", (event) => {
  event.preventDefault();
  console.log(cbox.value)
  let content = cbox.value;
  comCont = {content}
  const configObject = {method: "POST", body: comCont};
  console.log(configObject)

  fetch("http://localhost:3000/comments", configObject)
      .then(response => response.json())
      .then(comments => listComments(comments));
});
