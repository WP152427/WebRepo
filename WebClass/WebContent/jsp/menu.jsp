<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="blog.html">Home<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item" onmouseover="menu_over(this);" onmouseout="menu_out(this);">
        <a class="nav-link" href="favoriteFood.html">Favorite Food<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item" onmouseover="menu_over(this);" onmouseout="menu_out(this);">
        <a class="nav-link" href="favoriteSinger.html">Favorite Singer <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item" onmouseover="menu_over(this);" onmouseout="menu_out(this);">
        <a class="nav-link" href="favoriteTravelDestination.html">Favorite Travel Destination <span class="sr-only">(current)</span></a>
      </li>
</ul>
<form class="form-inline my-2 my-lg-0" id="loginForm">
      <input class="form-control mr-sm-2" type="text" size="15" placeholder="ID" aria-label="ID" id="id" required >
      <input class="form-control mr-sm-2" type="password" size="15" placeholder="PWD" aria-label="PWD" id="pwd" required >
      <button class="btn btn-outline-secondary my-2 my-sm-0" type="submit">Login</button>
    </form>
    
    <form class="form-inline my-2 my-lg-0" id="joinForm">
    <a href="join.html"><button class="btn btn-outline-secondary my-2 my-sm-0" type="button">Join</button></a>
    </form>