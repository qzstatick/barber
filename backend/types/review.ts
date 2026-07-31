export interface Review {
  id: string;
  barberId: string;
  userId: string;
  rating: number;
  comment?: string;
}
