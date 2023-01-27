const filterPolls = () => {
  const text = document.getElementById("search_box").value;
  if (text.length > 0) {
    window.location.replace("/polls?offset=&limit=&search=" + text);
  }
};
