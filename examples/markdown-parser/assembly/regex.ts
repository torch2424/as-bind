// Inspired by: https://nickdrane.com/build-your-own-regex/

function matchOne(pattern: string, text: string): i32 {
  return pattern === "." || text === pattern ? 1 : -1;
}

function matchQuestion(pattern: string, text: string): i32 {
  let doesMatch: i32 = matchOne(pattern.charAt(0), text.charAt(0)) ? 1 : -1;
  let doesRestMatch: i32 = match(pattern.slice(2), text.slice(1)) ? 1 : -1;
  let doesMatchWithoutQuestion: i32 = match(pattern.slice(2), text) ? 1 : -1;

  if (doesMatch > 0 && doesRestMatch > 0) {
    return 1;
  } else if (doesMatchWithoutQuestion > 0) {
    return 1;
  }

  return -1;
}

function matchStar(pattern: string, text: string): i32 {
  let doesMatch: i32 = matchOne(pattern.charAt(0), text.charAt(0)) ? 1 : -1;
  let doesRestMatch: i32 = match(pattern, text.slice(1)) ? 1 : -1;
  let doesMatchWithoutStar: i32 = match(pattern.slice(2), text) ? 1 : -1;

  if (doesMatch > 0 && doesRestMatch > 0) {
    return 1;
  } else if (doesMatchWithoutStar > 0) {
    return 1;
  }

  return -1;
}

function matchGroup(pattern: string, text: string) {
  let groupEnd = pattern.indexOf(")");
  let groupPattern = pattern.slice(1, groupEnd);

  if (pattern.charAt(groupEnd + 1) === "?") {
    let remainderPattern = pattern.slice(groupEnd + 2); // +2 needed to slice off the ')?'

    let doesGroupPatternMatch = match(
      groupPattern,
      text.slice(0, groupPattern.length)
    )
      ? 1
      : -1;
    let doesRemainderPatternWithoutGroupMatch = match(
      remainderPattern,
      text.slice(groupPattern.length)
    )
      ? 1
      : -1;
    let doesRemainderPatternMatch = match(remainderPattern, text) ? 1 : -1;

    if (
      doesGroupPatternMatch > 0 &&
      doesRemainderPatternWithoutGroupMatch > 0
    ) {
      return 1;
    } else if (doesRemainderPatternMatch > 0) {
      return 1;
    }

    return -1;
  } else if (pattern[groupEnd + 1] === "*") {
    let remainderPattern = pattern.slice(groupEnd + 2); // +2 needed to slice off the ')*'

    let doesGroupPatternMatch = match(
      groupPattern,
      text.slice(0, groupPattern.length)
    )
      ? 1
      : -1;
    let doesPatternWithoutGroupMatch = match(
      pattern,
      text.slice(groupPattern.length)
    )
      ? 1
      : -1;
    let doesRemainderPatternMatch = match(remainderPattern, text) ? 1 : -1;

    if (doesGroupPatternMatch > 0 && doesPatternWithoutGroupMatch > 0) {
      return 1;
    } else if (doesRemainderPatternMatch > 0) {
      return 1;
    }

    return -1;
  }

  let remainderPattern = pattern.slice(groupEnd + 1); // +1 needed to slice off the ')'

  let doesGroupPatternMatch = match(
    groupPattern,
    text.slice(0, groupPattern.length)
  )
    ? 1
    : -1;
  let doesRemainderPatternMatch = match(remainderPattern, text) ? 1 : -1;

  if (doesGroupPatternMatch && doesRemainderPatternMatch) {
    return 1;
  }
  return -1;
}

export function match(pattern: string, text: string): i32 {
  if (pattern === "$") return true;
  else if (pattern.charAt(1) === "?") {
    return matchQuestion(pattern, text);
  } else if (pattern.charAt(1) === "*") {
    return matchStar(pattern, text);
  } else if (pattern.charAt(0) === "(") {
    return matchGroup(pattern, text);
  }

  return (
    matchOne(pattern.charAt(0), text.charAt(0)) &&
    match(pattern.slice(1), text.slice(1))
  );
}

export function search(pattern: string, text: string): i32 {
  if (pattern.charAt(0) === "^") {
    return match(pattern.slice(1), text);
  }

  return match(".*" + pattern, text);
}
