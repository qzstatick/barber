export function isValidEmail(email: string) {
  return /^\S+@\S+\.\S+$/.test(email);
}

export function isNonEmptyString(value: unknown) {
  return typeof value === "string" && value.trim().length > 0;
}
