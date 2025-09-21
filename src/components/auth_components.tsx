import { styled } from "styled-components";
import AppleLogo from "../assets/apple_btn.png";
import KakaoLogo from "../assets/kakao_btn.png";

const MOBILE_BP = "768px";

export const Page = styled.div`
  min-height: 100vh;
  display: flex;
  align-items: center;
  justify-content: center;
  padding: 48px 20px;
  font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif;
  line-height: 1.5;
  
  @media (max-width: ${MOBILE_BP}) {
    padding: 24px 8px;
  }
`;

export const Card = styled.div`
  width: 100%;
  max-width: 720px;
  min-width: 560px;
  background: #ffffff;
  color: #1a1a1a;
  border-radius: 12px;
  border: 1px solid #e5e5e5;
  padding: 40px;
  box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1);
  
  @media (max-width: ${MOBILE_BP}) {
    width: calc(100vw - 16px);
    min-width: 320px;
    max-width: none;
    padding: 24px 12px;
  }
`;

export const Logo = styled.div`
  width: 48px;
  height: 48px;
  border-radius: 8px;
  background: #f8f9fa;
  color: #1a1a1a;
  display: flex;
  align-items: center;
  justify-content: center;
  font-weight: 600;
  font-size: 18px;
  margin: 0 auto 16px auto;
`;

export const Wrapper = styled.div`
  display: flex;
  flex-direction: column;
  gap: 24px;
  width: 100%;
`;

export const Title = styled.h1`
  font-size: 28px;
  font-weight: 600;
  text-align: center;
  margin: 0;
  letter-spacing: -0.02em;
  color: #1a1a1a;
`;

export const Form = styled.form`
  display: flex;
  flex-direction: column;
  gap: 12px;
`;

export const Input = styled.input`
  padding: 14px 16px;
  border-radius: 8px;
  border: 1px solid #d1d5db;
  background: #ffffff;
  color: #1a1a1a;
  font-size: 16px;
  font-family: inherit;
  transition: border-color 0.15s ease, box-shadow 0.15s ease;
  
  &:focus {
    outline: none;
    border-color: #3b82f6;
    box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.1);
  }
  
  &::placeholder {
    color: #9ca3af;
  }
  
  &[type="submit"] {
    cursor: pointer;
    background: #1a1a1a;
    color: #ffffff;
    border-color: #1a1a1a;
    font-weight: 500;
    margin-top: 6px;
    
    &:hover {
      background: #111111;
    }
    
    &:disabled {
      background: #9ca3af;
      cursor: not-allowed;
    }
  }
`;

export const Error = styled.span`
  color: #ef4444;
  text-align: center;
  font-size: 13px;
  margin-top: 4px;
`;

export const Switcher = styled.div`
  text-align: center;
  font-size: 13px;
  color: #6b7280;
  margin-top: 16px;
  
  a {
    color: #3b82f6;
    text-decoration: none;
    font-weight: 500;
    
    &:hover {
      text-decoration: underline;
    }
  }
`;

export const Divider = styled.div`
  display: flex;
  align-items: center;
  gap: 12px;
  color: #6b7280;
  font-size: 12px;
  font-weight: 500;
  margin: 16px 0 12px 0;
  text-transform: uppercase;
  letter-spacing: 0.025em;
  
  &::before,
  &::after {
    content: "";
    height: 1px;
    flex: 1;
    background: #e5e7eb;
  }
`;

export const SocialRow = styled.div`
  display: flex;
  flex-direction: column;
  gap: 10px;
`;

export const SocialButton = styled.button`
  appearance: none;
  border: 1px solid #d1d5db;
  background: #ffffff;
  color: #1a1a1a;
  padding: 0 16px;
  border-radius: 8px;
  display: flex;
  align-items: center;
  justify-content: center;
  gap: 12px;
  font-weight: 500;
  font-size: 15px;
  font-family: inherit;
  cursor: pointer;
  transition: all 0.15s ease;
  height: 46px;
  line-height: 1;
  
  &:hover {
    background: #f9fafb;
    border-color: #9ca3af;
  }
  
  &:active {
    transform: translateY(0.5px);
  }
  
  &[data-variant="google"] {
    background: #ffffff;
    color: #1a1a1a;
    border-color: #d1d5db;
  }
  
  &[data-variant="apple"] {
    background: #000000;
    color: #ffffff;
    border-color: #1a1a1a;
    
    &:hover {
      background: #111111;
      border-color: #111111;
    }
  }
  
  &[data-variant="kakao"] {
    background: #FEE500;
    color: #1a1a1a;
    border-color: #FEE500;
    
    &:hover {
      background: #fdd835;
      border-color: #fdd835;
    }
  }
`;

export const Icon = styled.span`
  display: inline-flex;
  width: 18px;
  height: 18px;
  align-items: center;
  justify-content: center;
  flex-shrink: 0;
  img, svg {
    width: 18px;
    height: 18px;
    display: block;
    object-fit: contain;
  }
  &.apple img {
    width: 36px;
    height: 36px;
    display: block;
    object-fit: contain;
  }
`;

export const Label = styled.span`
  position: relative;
  top: -0.5px;
  line-height: 1;
`;

// Google Identity Services Material-style button
const GsiButton = styled.button`
  position: relative;
  display: inline-flex;
  align-items: center;
  justify-content: center;
  border: 1px solid #d1d5db;
  background: #ffffff;
  color: #1a1a1a;
  height: 46px;
  border-radius: 8px;
  padding: 0 16px;
  width: 100%;
  cursor: pointer;
  font-size: 15px;
  font-weight: 500;
  font-family: inherit;
  transition: all 0.15s ease;
  line-height: 1;
  transform: translateY(-1px);
  
  .gsi-material-button-state {
    position: absolute;
    inset: 0;
    border-radius: inherit;
  }
  
  .gsi-material-button-content-wrapper {
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 12px;
  }
  
  .gsi-material-button-contents {
    position: relative;
    top: -0.5px;
  }
  
  .gsi-material-button-icon {
    width: 18px;
    height: 18px;
    display: inline-flex;
  }
  
  &:hover {
    background: #f9fafb;
    border-color: #9ca3af;
  }
  
  &:active {
    transform: translateY(0.5px);
  }
`;

export function GoogleButton({ onClick }: { onClick?: () => void }) {
  return (
    <GsiButton type="button" onClick={onClick} className="gsi-material-button">
      <div className="gsi-material-button-state"></div>
      <div className="gsi-material-button-content-wrapper">
        <div className="gsi-material-button-icon">
          <svg version="1.1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 48 48" style={{ display: "block" }}>
            <path fill="#EA4335" d="M24 9.5c3.54 0 6.71 1.22 9.21 3.6l6.85-6.85C35.9 2.38 30.47 0 24 0 14.62 0 6.51 5.38 2.56 13.22l7.98 6.19C12.43 13.72 17.74 9.5 24 9.5z"></path>
            <path fill="#4285F4" d="M46.98 24.55c0-1.57-.15-3.09-.38-4.55H24v9.02h12.94c-.58 2.96-2.26 5.48-4.78 7.18l7.73 6c4.51-4.18 7.09-10.36 7.09-17.65z"></path>
            <path fill="#FBBC05" d="M10.53 28.59c-.48-1.45-.76-2.99-.76-4.59s.27-3.14.76-4.59l-7.98-6.19C.92 16.46 0 20.12 0 24c0 3.88.92 7.54 2.56 10.78l7.97-6.19z"></path>
            <path fill="#34A853" d="M24 48c6.48 0 11.93-2.13 15.89-5.81l-7.73-6c-2.15 1.45-4.92 2.3-8.16 2.3-6.26 0-11.57-4.22-13.47-9.91l-7.98 6.19C6.51 42.62 14.62 48 24 48z"></path>
            <path fill="none" d="M0 0h48v48H0z"></path>
          </svg>
        </div>
        <span className="gsi-material-button-contents">Continue with Google</span>
      </div>
    </GsiButton>
  );
}

export function AppleButton({ onClick }: { onClick?: () => void }) {
  return (
    <SocialButton type="button" data-variant="apple" onClick={onClick}>
      <Icon className="apple">
        <img src={AppleLogo} alt="Apple" />
      </Icon>
      <Label>Continue with Apple</Label>
    </SocialButton>
  );
}

export function KakaoButton({ onClick }: { onClick?: () => void }) {
  return (
    <SocialButton type="button" data-variant="kakao" onClick={onClick}>
      <Icon>
        <img src={KakaoLogo} alt="Kakao" />
      </Icon>
      <Label>Continue with Kakao</Label>
    </SocialButton>
  );
}


