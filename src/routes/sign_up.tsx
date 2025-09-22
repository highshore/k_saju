import { useState } from "react";
import { Link, useNavigate } from "react-router-dom";
import {
  Card,
  Divider,
  Form,
  Error as ErrorText,
  Input,
  LogoImage,
  Page,
  Switcher,
  Wrapper,
  GoogleButton,
  AppleButton,
  KakaoButton,
  LanguageSelector,
} from "../components/auth_components";
import { useI18n } from "../i18n/i18n";
import { supabase } from "../supabase";

export function CreateAccount() {
  const { t } = useI18n();
  const navigate = useNavigate();
  const [isLoading, setLoading] = useState(false);
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [confirmPassword, setConfirmPassword] = useState("");
  const [error, setError] = useState("");
  const onGoogle = async () => {
    const { error } = await supabase.auth.signInWithOAuth({
      provider: "google",
      options: { redirectTo: window.location.origin + "/kakao-callback" },
    });
    if (error) setError(error.message);
  };
  const onApple = async () => {
    setError("Apple Sign-In not configured yet");
  };
  const onKakao = async () => {
    const { error } = await supabase.auth.signInWithOAuth({
      provider: "kakao" as any,
      options: { redirectTo: window.location.origin + "/kakao-callback" },
    });
    if (error) setError(error.message);
  };
  const onChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    const {
      target: { name, value },
    } = e;
    if (name === "email") {
      setEmail(value);
    } else if (name === "password") {
      setPassword(value);
    } else if (name === "confirmPassword") {
      setConfirmPassword(value);
    }
  };
  const onSubmit = async (e: React.FormEvent<HTMLFormElement>) => {
    e.preventDefault();
    setError("");
    if (isLoading || email === "" || password === "" || confirmPassword === "")
      return;
    if (password !== confirmPassword) {
      setError("Passwords do not match");
      return;
    }
    try {
      setLoading(true);
      const { error } = await supabase.auth.signUp({ email, password });
      if (error) {
        setError(error.message);
      } else {
        navigate("/");
      }
    } catch (e) {
      const msg = e instanceof Error ? e.message : String(e);
      setError(msg);
    } finally {
      setLoading(false);
    }
  };
  return (
    <Page>
      <LanguageSelector />
      <Card>
        <LogoImage />
        <Wrapper>
          <Form onSubmit={onSubmit}>
            <Input
              onChange={onChange}
              name="email"
              value={email}
              placeholder={t("email")}
              type="email"
              required
            />
            <Input
              onChange={onChange}
              value={password}
              name="password"
              placeholder={t("password")}
              type="password"
              required
            />
            <Input
              onChange={onChange}
              value={confirmPassword}
              name="confirmPassword"
              placeholder={t("confirmPassword")}
              type="password"
              required
            />
            <Input
              type="submit"
              value={isLoading ? t("loading") : t("createAccount")}
            />
          </Form>
          <Divider>{t("or")}</Divider>
          <div style={{ display: "flex", flexDirection: "column", gap: 12 }}>
            <GoogleButton onClick={onGoogle} />
            <AppleButton onClick={onApple} />
            <KakaoButton onClick={onKakao} />
          </div>
          {error !== "" ? <ErrorText>{error}</ErrorText> : null}
          <Switcher>
            {t("alreadyHaveAccount")}{" "}
            <Link to="/sign_in">{t("logInHere")} &rarr;</Link>
          </Switcher>
        </Wrapper>
      </Card>
    </Page>
  );
}
