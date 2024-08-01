import streamlit as st

def hello_world():
    return 'Hello to my first app with streamlit'

def main():
    st.write(hello_world())

if __name__ == '__main__':
    main()