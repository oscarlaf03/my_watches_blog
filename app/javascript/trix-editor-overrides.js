

window.addEventListener("trix-file-accept", function(event) {
  const acceptedTypes = ['image/jpeg', 'image/png', 'image/jpg']
  if (!acceptedTypes.includes(event.file.type)) {
    event.preventDefault()
    alert("Only support attachment of jpeg or png files")
  }
})


window.addEventListener("trix-file-accept", function(event) {
  const maxFileSize = 1024 * 1024 // 1MB 
  if (event.file.size > maxFileSize) {
    event.preventDefault()
    alert("Only support attachment files upto size 1MB!")
  }
})
