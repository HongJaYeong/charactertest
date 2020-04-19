const TESTDATA = [
  {
    "type": 0,
    "question": "Do new interactions or interactions with new people",
    "answer1": "excite and energize you",
    "answer2": "worry or drain you"
  },
  {
    "type": 0,
    "question": "At parties, do you generally",
    "answer1": "stay late, with increasing energy",
    "answer2": "leave early, with decreased energy"
  },
  {
    "type": 0,
    "question": "Do you usually",
    "answer1": "stay up to date on other people's lives",
    "answer2": "get behind on other people's news"
  },
  {
    "type": 0,
    "question": "Do you consider yourself a better",
    "answer1": "conversationalist",
    "answer2": "listener"
  },
  {
    "type": 0,
    "question": "When standing in line, do you often",
    "answer1": "chat with others",
    "answer2": "mind your own business"
  },
  {
    "type": 0,
    "question": "Are you more of",
    "answer1": "an outgoing person",
    "answer2": "a private person"
  },
  {
    "type": 0,
    "question": "Do you have",
    "answer1": "many friends with little contact for most",
    "answer2": "few friends with deep friendships"
  },
  {
    "type": 0,
    "question": "Are you generally",
    "answer1": "observant of the world",
    "answer2": "introspective or inward looking"
  },
  {
    "type": 0,
    "question": "When the phone rings, do you",
    "answer1": "try to get to it first",
    "answer2": "hope someone else will answer"
  },
  {
    "type": 0,
    "question": "Are you",
    "answer1": "easy to approach and talk to",
    "answer2": "hard to approach and talk to"
  },
  {
    "type": 0,
    "question": "When you find something you like, do you tend to",
    "answer1": "admire it",
    "answer2": "think of how good it'd be if you had it"
  },
  {
    "type": 1,
    "question": "Are you more",
    "answer1": "realistic",
    "answer2": "idealistic"
  },
  {
    "type": 1,
    "question": "Facts",
    "answer1": "have obvious meanings",
    "answer2": "explain things or situations"
  },
  {
    "type": 1,
    "question": "Do you prefer writers who",
    "answer1": "say what they mean",
    "answer2": "use analogies, metaphors and symbolism"
  },
  {
    "type": 1,
    "question": "Do you tend to be interested in the",
    "answer1": "actual",
    "answer2": "possible"
  },
  {
    "type": 1,
    "question": "In doing common things, do you often do it",
    "answer1": "the usual ways like most others",
    "answer2": "your own way"
  },
  {
    "type": 1,
    "question": "Are you more",
    "answer1": "sensible",
    "answer2": "imaginative"
  },
  {
    "type": 1,
    "question": "Which is worse",
    "answer1": "change",
    "answer2": "tradition"
  },
  {
    "type": 1,
    "question": "Are visionaries and theorists",
    "answer1": "somewhat annoying",
    "answer2": "rather fascinating"
  },
  {
    "type": 1,
    "question": "Common sense is",
    "answer1": "rarely questionable",
    "answer2": "often questionable"
  },
  {
    "type": 1,
    "question": "Children do not",
    "answer1": "make themselves useful enough",
    "answer2": "use their imaginations enough"
  },
  {
    "type": 1,
    "question": "Do you mostly live in, or think about, the",
    "answer1": "present or past",
    "answer2": "future"
  },
  {
    "type": 1,
    "question": "Do you usually see how others",
    "answer1": "are useful",
    "answer2": "see"
  },
  {
    "type": 1,
    "question": "You often speak in",
    "answer1": "specifics",
    "answer2": "generalities"
  },
  {
    "type": 1,
    "question": "Would you rather do",
    "answer1": "production and distribution",
    "answer2": "design and research"
  },
  {
    "type": 1,
    "question": "Which do you regularly trust over the other, your",
    "answer1": "experience",
    "answer2": "instinct"
  },
  {
    "type": 1,
    "question": "Which trait is stronger in you",
    "answer1": "practicality",
    "answer2": "cleverness"
  },
  {
    "type": 1,
    "question": "Which is the greater quality to have",
    "answer1": "a strong sense of reality",
    "answer2": "a vivid imagination"
  },
  {
    "type": 1,
    "question": "Which is more interesting to you",
    "answer1": "details",
    "answer2": "concepts or ideas"
  },
  {
    "type": 1,
    "question": "Do you often take what someone tells you",
    "answer1": "literally or exactly",
    "answer2": "figuratively or roughly"
  },
  {
    "type": 1,
    "question": "Do you tend to see",
    "answer1": "reality",
    "answer2": "possibilities"
  },
  {
    "type": 1,
    "question": "Do you prefer stories and movies about",
    "answer1": "action and adventure",
    "answer2": "fantasy and heroism"
  },
  {
    "type": 2,
    "question": "If you must disappoint someone, are you usually",
    "answer1": "honest and straightforward",
    "answer2": "warm and caring"
  },
  {
    "type": 2,
    "question": "Is it easier to influence you with",
    "answer1": "convincing evidence",
    "answer2": "a touching appeal"
  },
  {
    "type": 2,
    "question": "Which way is easier for you to understand people, using",
    "answer1": "reasoning",
    "answer2": "instincts"
  },
  {
    "type": 2,
    "question": "You often approach or greet people",
    "answer1": "professionally and business-like",
    "answer2": "personally and casually"
  },
  {
    "type": 2,
    "question": "Which is of greater value to you",
    "answer1": "consistent thinking",
    "answer2": "harmonious relationships"
  },
  {
    "type": 2,
    "question": "Would you rather make decisions based on",
    "answer1": "evidence and logic",
    "answer2": "values or feelings"
  },
  {
    "type": 2,
    "question": "Do you tend to be a",
    "answer1": "reasonable person",
    "answer2": "sympathetic person"
  },
  {
    "type": 2,
    "question": "Is it better to be",
    "answer1": "fair and just",
    "answer2": "forgiving and merciful"
  },
  {
    "type": 2,
    "question": "In rating things, do you regularly use",
    "answer1": "standards",
    "answer2": "feelings"
  },
  {
    "type": 2,
    "question": "With people, are you usually",
    "answer1": "firm",
    "answer2": "gentle"
  },
  {
    "type": 2,
    "question": "Would you rather",
    "answer1": "discuss an issue in detail, whether agreeing or not",
    "answer2": "arrive at agreement on an issue"
  },
  {
    "type": 2,
    "question": "Which dominates you, your",
    "answer1": "thoughts",
    "answer2": "feelings"
  },
  {
    "type": 2,
    "question": "Which is the greater compliment",
    "answer1": "There is a logical person",
    "answer2": "There is an emotional person"
  },
  {
    "type": 2,
    "question": "Which is stronger in you",
    "answer1": "reasoning",
    "answer2": "devotion"
  },
  {
    "type": 2,
    "question": "Do you regularly buy things you",
    "answer1": "can justify in having",
    "answer2": "want"
  },
  {
    "type": 2,
    "question": "Are you generally",
    "answer1": "fair-minded",
    "answer2": "soft-hearted"
  },
  {
    "type": 2,
    "question": "Which is worse to be",
    "answer1": "too passionate",
    "answer2": "too logical"
  },
  {
    "type": 2,
    "question": "Do you tend to volunteer for or donate to causes you",
    "answer1": "understand",
    "answer2": "sympathize with"
  },
  {
    "type": 2,
    "question": "Which do you wish was stronger in you",
    "answer1": "determination",
    "answer2": "self-control"
  },
  {
    "type": 2,
    "question": "Would you rather watch movies with",
    "answer1": "plots or story lines that are hard to understand",
    "answer2": "characters who are hard to understand"
  },
  {
    "type": 2,
    "question": "When you are in charge, are you mostly",
    "answer1": "strict and firm",
    "answer2": "lenient and forgiving"
  },
  {
    "type": 3,
    "question": "Do you prefer to work to",
    "answer1": "deadlines",
    "answer2": "just \"whenever"
  },
  {
    "type": 3,
    "question": "Do you mostly choose",
    "answer1": "rather carefully",
    "answer2": "somewhat casually"
  },
  {
    "type": 3,
    "question": "Are you regularly",
    "answer1": "on time or early",
    "answer2": "late"
  },
  {
    "type": 3,
    "question": "Which do you enjoy more",
    "answer1": "finishing a project",
    "answer2": "working on a project"
  },
  {
    "type": 3,
    "question": "Do you like things",
    "answer1": "finalized and certain",
    "answer2": "open to change"
  },
  {
    "type": 3,
    "question": "Are you usually",
    "answer1": "serious and determined",
    "answer2": "easy-going"
  },
  {
    "type": 3,
    "question": "Most of the time or on most issues, are you",
    "answer1": "opinionated",
    "answer2": "neutral or indifferent"
  },
  {
    "type": 3,
    "question": "Anywhere you have your own space, is it mostly",
    "answer1": "organized",
    "answer2": "disorganized"
  },
  {
    "type": 3,
    "question": "Which is the greater ability",
    "answer1": "to organize and be methodical",
    "answer2": "to adapt and work with what you have"
  },
  {
    "type": 3,
    "question": "Do you prefer to",
    "answer1": "make decisions",
    "answer2": "have decisions made for you"
  },
  {
    "type": 3,
    "question": "Do you prefer work, or to do work, which is",
    "answer1": "signed, sealed and delivered by contract",
    "answer2": "agreed on with a handshake"
  },
  {
    "type": 3,
    "question": "Which is worse, being too",
    "answer1": "indifferent or uncaring",
    "answer2": "critical"
  },
  {
    "type": 3,
    "question": "Is clutter something you generally",
    "answer1": "take time to clean up",
    "answer2": "ignore and put up with"
  },
  {
    "type": 3,
    "question": "Are you more comfortable",
    "answer1": "after a decision is made",
    "answer2": "before a decision made"
  },
  {
    "type": 3,
    "question": "Is it better to",
    "answer1": "have things planned",
    "answer2": "just let things happen"
  },
  {
    "type": 3,
    "question": "Do you live most of your life",
    "answer1": "in a hurry or rushed pace",
    "answer2": "casually and easy-going"
  },
  {
    "type": 3,
    "question": "At work, do you like your day",
    "answer1": "scheduled",
    "answer2": "unscheduled"
  },
  {
    "type": 3,
    "question": "How firmly should laws be enforced",
    "answer1": "as written",
    "answer2": "with room to change for circumstances involved"
  },
  {
    "type": 3,
    "question": "In life, are you more",
    "answer1": "deliberate and intentional",
    "answer2": "spontaneous and improvising"
  },
  {
    "type": 3,
    "question": "Is your life relatively",
    "answer1": "structured",
    "answer2": "unstructured"
  },
  {
    "type": 3,
    "question": "At work, is it easier for you to",
    "answer1": "point out mistakes",
    "answer2": "try to please others"
  }
];