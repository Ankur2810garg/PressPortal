//Initial References
let file = document.getElementById("my-file");
let message = document.getElementById("message");
let message1 = document.getElementById("message1");

//Call the function when there is input on the file input button
file.addEventListener("input", () => {
  //if user selects a file
  if (file.files.length) {
    let fileName = file.files[0].name;
    message.innerHTML = `${fileName}`;
    message1.value= message.innerHTML;
  }
  //If user click on cancel
  else {
    message.innerHTML = "Please select a file";
  }
});
