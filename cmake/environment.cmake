function(detect_buildenv)
  if($ENV{CI}
     AND $ENV{TRAVIS}
     AND "$ENV{CI}" STREQUAL "true"
     AND "$ENV{TRAVIS}" STREQUAL "true")
    set(IS_TRAVIS_CI TRUE PARENT_SCOPE)
  else()
    set(IS_TRAVIS_CI FALSE PARENT_SCOPE)
  endif()
endfunction()
