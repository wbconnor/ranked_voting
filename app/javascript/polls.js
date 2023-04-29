document.addEventListener('turbo:load', () => {
    const optionContainer = document.querySelector('#options')
  
    if (optionContainer) {
      const addOptionButton = document.querySelector('#add-option')
      const deleteOptionButtons = optionContainer.querySelectorAll('.delete-option')
  
      const handleAddOptionClick = () => {
        const time = new Date().getTime()
        const regexp = new RegExp(addOptionButton.dataset.id, 'g')
        const content = addOptionButton.dataset.fields.replace(regexp, time)
        optionContainer.insertAdjacentHTML('beforeend', content)
      }
  
      const handleDeleteOptionClick = (event) => {
        event.preventDefault()
        const option = event.target.closest('.option')
        option.querySelector('input[type="hidden"]').value = '1'
        option.style.display = 'none'
      }
  
      addOptionButton.addEventListener('click', handleAddOptionClick)
  
      deleteOptionButtons.forEach((button) => {
        button.addEventListener('click', handleDeleteOptionClick)
      })
    }
  })
  