export const metadata = {
  title: "Barber Backend",
  description: "API backend for the barber application",
};

export default function RootLayout({ children }: { children: React.ReactNode }) {
  return (
    <html lang="en">
      <body>{children}</body>
    </html>
  );
}
