import os
import openai
import gradio as gr

openai.api_key = "OPENAI_API_KEY"

messages = [
    {"role": "system", "content": "You are a helpful and kind AI Assistant."},
]

def chatbot(input):
    if input:
        messages.append({"role": "user", "content": input})
        chat = openai.ChatCompletion.create(
            model="gpt-3.5-turbo", messages=messages
        )
        reply = chat.choices[0].message.content
        messages.append({"role": "assistant", "content": reply})
        return reply


inputs = gr.inputs.Textbox(lines=7, label="What can I make for you?")
outputs = gr.outputs.Textbox(label="Reply")

gr.Interface(fn=chatbot, inputs=inputs, outputs=outputs, title="TeamBoilerplate Chatbot",
             description="Be as specific as you can when asking for an HTML, CSS and JS boilerplate. Include classnames, id where needed and specify if you want a semantic or non-semantic tags ",
             theme="compact").launch(share=True)
