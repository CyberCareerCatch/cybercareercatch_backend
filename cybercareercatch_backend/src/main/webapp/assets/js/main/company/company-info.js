document.addEventListener("DOMContentLoaded", function () {
  const qnaBox = document.querySelector(".cmp-qna-box");

  if (!qnaBox) {
    return;
  }

  qnaBox.addEventListener("click", function () {
    const targetUrl = qnaBox.dataset.url;
    const loginRequired = qnaBox.dataset.loginRequired === "true";

    if (loginRequired) {
      alert("기업 QnA 게시판은 로그인 후 이용할 수 있습니다.");
    }

    if (targetUrl) {
      window.location.href = targetUrl;
    }
  });
});