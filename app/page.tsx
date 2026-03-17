export const metadata = {
  title: "Bizgig",
  description: "Music Player",
};export default function Home() {
  return (
    <div style={{ padding: "2rem", textAlign: "center" }}>
      <h1>Coremingle</h1>
      <audio controls>
         <source src="./music/MidnightCowbellRevivalwithCowbell.mp3" type="audio/mpeg" />
        Your browser does not support the audio element.
      </audio>
    </div>
  );
}