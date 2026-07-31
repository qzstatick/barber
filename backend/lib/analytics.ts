export function trackEvent(eventName: string, payload: Record<string, unknown> = {}) {
  console.log(`Tracking event: ${eventName}`, payload);
}
