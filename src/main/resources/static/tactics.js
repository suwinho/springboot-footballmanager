function validateLineup() {
  const starters = document.querySelectorAll("#starters-zone .player-card");
  const count = starters.length;
  const saveButton = document.getElementById("saveButton");
  const counterText = document.getElementById("playerCount");

  if (!saveButton || !counterText) return;

  if (count === 11) {
    saveButton.disabled = false;
    counterText.innerText = "SKŁAD KOMPLETNY (11/11)";
    counterText.className =
      "text-right text-xs mt-3 font-bold text-green-400 uppercase tracking-widest";
  } else {
    saveButton.disabled = true;
    const diff = 11 - count;
    if (count < 11) {
      counterText.innerText = `DOŁÓŻ JESZCZE ${diff} ZAWODNIKÓW`;
    } else {
      counterText.innerText = `ZA DUŻO O ${count - 11} ZAWODNIKÓW`;
    }
    counterText.className =
      "text-right text-xs mt-3 font-bold text-red-500 uppercase tracking-widest animate-pulse";
  }
}

function allowDrop(ev) {
  ev.preventDefault();
  ev.currentTarget.classList.add("drag-over");
}

function removeHighlight(ev) {
  ev.currentTarget.classList.remove("drag-over");
}

function drag(ev) {
  ev.dataTransfer.setData("text/plain", ev.target.id);
  ev.target.classList.add("dragging");
}

function drop(ev) {
  ev.preventDefault();
  const zone = ev.currentTarget;
  zone.classList.remove("drag-over");

  const playerCardId = ev.dataTransfer.getData("text/plain");
  const playerCard = document.getElementById(playerCardId);
  if (!playerCard) return;
  const isInjured = playerCard.getAttribute("data-injured") === "true";
  const isTargetingStarters = zone.id === "starters-zone";

  if (isInjured && isTargetingStarters) {
    alert(
      "Ten zawodnik jest kontuzjowany i nie może grać w podstawowym składzie!",
    );
    playerCard.classList.remove("dragging");
    return;
  }

  playerCard.classList.remove("dragging");
  zone.appendChild(playerCard);
  updateCardUI(playerCard, zone.id);
  validateLineup();
}

function updateCardUI(card, zoneId) {
  const isStarter = zoneId === "starters-zone";
  const badge = card.querySelector(".badge");
  const ovrCircle = card.querySelector(".ovr-circle");
  const nameText = card.querySelector(".player-name");

  if (isStarter) {
    card.classList.remove("bg-slate-900", "opacity-70");
    card.classList.add(
      "bg-slate-800",
      "opacity-100",
      "shadow-xl",
      "border-slate-700",
    );
    if (badge) {
      badge.innerText = "XI";
      badge.className = "badge text-green-500 font-black uppercase";
    }
    if (ovrCircle)
      ovrCircle.className =
        "ovr-circle w-10 h-10 bg-blue-600 rounded-full flex items-center justify-center font-black text-sm text-white";
    if (nameText)
      nameText.className = "player-name font-bold leading-none text-white";
  } else {
    card.classList.remove(
      "bg-slate-800",
      "opacity-100",
      "shadow-xl",
      "border-slate-700",
    );
    card.classList.add("bg-slate-900", "opacity-70");
    if (badge) {
      badge.innerText = "SUB";
      badge.className = "badge text-slate-700 font-black uppercase";
    }
    if (ovrCircle)
      ovrCircle.className =
        "ovr-circle w-10 h-10 bg-slate-700 rounded-full flex items-center justify-center font-black text-sm text-slate-400";
    if (nameText)
      nameText.className = "player-name font-bold leading-none text-slate-400";
  }
}

function prepareSubmit() {
  const starterCards = document.querySelectorAll("#starters-zone .player-card");
  const ids = Array.from(starterCards).map((c) => c.getAttribute("data-id"));
  const input = document.getElementById("starterIdsInput");
  if (input) input.value = ids.join(",");
}

window.addEventListener("DOMContentLoaded", validateLineup);
