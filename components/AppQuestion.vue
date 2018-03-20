<template>
  <div>
    <div class="field">
      <label class="label">Ask me what you know. If I win, give me your soul!</label>
      <div class="control">
        <input
            class="input"
            type="text"
            placeholder="Ask here"
            :value="outputText"
            @input="inputText"
            @focus="clean">
      </div>
      <div class="field is-grouped">
        <div class="control">
          <button class="button is-link" @click="ask">Sell my soul</button>
        </div>
      </div>
    </div>
    <div v-show="isToShowAnswer">
      <h2 class="subtitle">{{ answer }}</h2>
    </div>
  </div>
</template>

<script>
export default {
  data () {
    return {
      question: '',
      answer: '',
      outputText: '',
      answerProccess: false,
      isToShowAnswer: false,
      phrases: [
        'Lord of Darkness'
      ],
      tempPhrase: []
    }
  },
  methods: {
    ask () {
      if (!this.answer) {
        this.answer = 'Are you Kidding?! I demand respect!'
      }

      this.isToShowAnswer = true
    },
    inputText (event) {
      // debugger
      if (event.data == ';') {
        this.answerProccess = !this.answerProccess
        if (this.answerProccess) {
          this.tempPhrase = this.phrases[0].split('')
        }
        event.target.value = this.outputText
      } else if (this.answerProccess) {
        this.answer += event.data
      } else {
        this.outputText += event.data
      }

      if (this.answerProccess) {
        this.outputText += this.tempPhrase ? this.tempPhrase.shift() : '.'
      }
    },
    clean: function (event) {
      // Workaround for Safari bug
      // http://stackoverflow.com/questions/1269722/selecting-text-on-focus-using-jquery-not-working-in-safari-and-chrome
      setTimeout(function () {
      	event.target.value = ''
      }, 0)
    },
  },
}
</script>
