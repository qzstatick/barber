export function createPaypalPayment(data: Record<string, unknown>) {
  return { approvalUrl: "https://paypal.com/checkout" };
}
