<?php


  public function taggedAsShortFilm() {
    $tagged = false;
    foreach ($this->Themes() as $theme) {
      if ($theme->Title === "Short Film") $tagged = true;
    }
    return $tagged;
  }
  
  // Hotfix to use tags for films until futher clarification
  if (isset($requestVars['films'])) {
    $filteredBooks = BookDetail::get()->filter("Themes.Title","Short Film");
    $stories->merge($filteredBooks);
  }