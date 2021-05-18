import React from 'react';
import { render } from '@testing-library/react';
import { TenantConsumer, TenantProvider } from 'tenants';
import LoginLoading from './LoginLoading';
import { ThemeProvider } from 'styled-components';

const TestLoginLoading = () => {
  return (
    <TenantProvider>
      <TenantConsumer>
        {({ tenant }) => (
          <ThemeProvider theme={{ tenant, css: {} }}>
            <LoginLoading></LoginLoading>
          </ThemeProvider>
        )}
      </TenantConsumer>
    </TenantProvider>
  );
};

describe('Empty Header', () => {
  it('MOTI Login Loading', () => {
    process.env.REACT_APP_TENANT = 'MOTI';
    const { container } = render(<TestLoginLoading />);
    expect(container.firstChild).toMatchSnapshot();
  });

  it('CITZ Login Loading', () => {
    process.env.REACT_APP_TENANT = 'CITZ';
    const { container } = render(<TestLoginLoading />);
    expect(container.firstChild).toMatchSnapshot();
  });
});
