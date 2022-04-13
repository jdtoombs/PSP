import useDeepCompareEffect from 'hooks/useDeepCompareEffect';
import queryString from 'query-string';
import { useCallback, useMemo, useState } from 'react';
import { useHistory, useLocation } from 'react-router-dom';

import { pidParser } from './../../../utils/propertyUtils';

interface IMapSideBar {
  showSideBar: boolean;
  setShowSideBar: (show: boolean, pid?: string) => void;
  setDisabled: (disabled: boolean) => void;
  disabled?: boolean;
  pid?: string;
}

export enum MapSidebarContextType {
  INFO = 'info',
  SELECTOR = 'selector',
}

/** control the state of the side bar via query params. */
export const useMapSideBarQueryParams = (formikRef?: any): IMapSideBar => {
  const [showSideBar, setShowSideBar] = useState(false);
  const location = useLocation();
  const history = useHistory();

  const searchParams = useMemo(() => queryString.parse(location.search), [location.search]);

  useDeepCompareEffect(() => {
    setShowSideBar(searchParams.sidebar === 'true');
    history.replace({
      pathname: '/mapview',
      search: queryString.stringify(searchParams),
    });
  }, [searchParams]);

  const setShow = useCallback(
    (show: boolean, pid?: string) => {
      const search = {
        ...(searchParams as any),
        sidebar: show,
        pid: pidParser(pid),
      };
      history.push({ search: queryString.stringify(search) });
    },
    [history, searchParams],
  );

  return {
    showSideBar,
    setShowSideBar: setShow,
    disabled: searchParams?.disabled === 'true',
    setDisabled: disabled => {
      const queryParams = {
        ...queryString.parse(location.search),
        loadDraft: true,
        disabled: disabled,
      };
      const pathName = '/mapview';
      history.replace({ pathname: pathName, search: queryString.stringify(queryParams) });
    },
    pid: searchParams.pid as string,
  };
};

export default useMapSideBarQueryParams;
