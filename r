<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Reasons I Love You</title>
  <style>
    * {
      box-sizing: border-box;
    }

    body {
      margin: 0;
      min-height: 100vh;
      display: grid;
      place-items: center;
      padding: 24px;
      font-family: "Segoe UI", Arial, sans-serif;
      color: #542a3a;
      background: linear-gradient(135deg, #fff0f4, #ffe1eb);
    }

    .card {
      width: min(100%, 520px);
      padding: 40px 28px;
      text-align: center;
      background: rgba(255, 255, 255, 0.88);
      border: 1px solid white;
      border-radius: 24px;
      box-shadow: 0 18px 50px rgba(117, 42, 72, 0.15);
    }

    .heart {
      font-size: 48px;
      animation: beat 1.2s infinite;
    }

    h1 {
      margin: 12px 0;
      color: #b8325a;
    }

    .intro {
      color: #76505e;
      line-height: 1.6;
    }

    #reason {
      min-height: 90px;
      display: grid;
      place-items: center;
      margin: 26px 0;
      padding: 20px;
      border-radius: 16px;
      background: #fff0f4;
      font-size: 1.2rem;
      line-height: 1.5;
    }

    button {
      border: 0;
      border-radius: 999px;
      padding: 14px 22px;
      color: white;
      background: #c83e68;
      font-size: 1rem;
      font-weight: 700;
      cursor: pointer;
      transition: transform 0.2s, background 0.2s;
    }

    button:hover {
      background: #a92e54;
      transform: translateY(-2px);
    }

    .signature {
      margin-top: 24px;
      color: #76505e;
    }

    @keyframes beat {
      50% { transform: scale(1.15); }
    }

    @media (prefers-reduced-motion: reduce) {
      *, *::before, *::after {
        animation-duration: 0.01ms !important;
        transition-duration: 0.01ms !important;
      }
    }
  </style>
</head>
<body>
  <main class="card">
    <div class="heart" aria-hidden="true">💗</div>
    <h1>Reasons I Love You</h1>
    <p class="intro">
      A little reminder for someone who makes my days brighter.
      Tap the button for a reason 💌
    </p>

    <div id="reason" aria-live="polite">
      You make ordinary moments feel special.
    </div>

    <button id="reasonButton" type="button">Another reason ✨</button>

    <p class="signature">Made with love, from <span id="yourName">Your Name</span></p>
  </main>

  <script>
    // Personalize these with real things you love about her.
    const reasons = [
      "I love how your smile can make a difficult day feel lighter.",
      "I love how thoughtful you are with the people you care about.",
      "I love hearing you talk about the things that make you excited.",
      "I love the way we can laugh together over little things.",
      "I love how being around you feels like being right where I belong.",
      "I love your kindness, even in the small things you do.",
      "I love the memories we're making together—and the ones still ahead."
    ];

    // Change this to your name or nickname.
    document.getElementById("yourName").textContent = "Your Name";

    let nextReason = 0;
    const reasonBox = document.getElementById("reason");

    document.getElementById("reasonButton").addEventListener("click", () => {
      reasonBox.textContent = reasons[nextReason];
      nextReason = (nextReason + 1) % reasons.length;
    });
  </script>
</body>
</html>
