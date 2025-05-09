import streamlit as st
from snowflake.snowpark.context import get_active_session

st.balloons()
st.title('Sanskriti Yatra')

try:
    session = get_active_session()
    session.use_database("SANSKRITI_YATRA_DB")
    session.use_schema("PUBLIC")
except Exception as e:
    st.error(f"Failed to set database context: {e}")
