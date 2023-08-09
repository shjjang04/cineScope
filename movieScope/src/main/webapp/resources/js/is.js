let count = 8;

window.addEventListener("scroll", (e) => {
  const isScrollEnd = window.innerHeight + window.scrollY + 200 > document.body.offsetHeight;

  if (isScrollEnd && count < 15) {
    for (let i = 0; i < 8; i++) {
      const $newBox = document.createElement("div");
      $newBox.className = "col-xl-3 col-sm-6 mb-3";
      $newBox.textContent = ++count;
      document.querySelector("#scroll").appendChild($newBox);
    }
  }
});