class AutoTextArea extends HTMLTextAreaElement {
  constructor() {
    super();
  }

  connectedCallback() {
    setTimeout(() => { // First-time render hack, maybe use lit framework?
      this.style.height = "";
      this.style.height = `${this.scrollHeight}px`
    });

    this.oninput = () => {
      this.style.height = "";
      this.style.height = `${this.scrollHeight}px`
    }
  }
}

customElements.define('auto-textarea', AutoTextArea, { extends: 'textarea' });
