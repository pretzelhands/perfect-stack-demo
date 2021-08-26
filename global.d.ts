import { Request } from "express";

export type Page = {
  readonly component: string;
  props: props;
  readonly url: string;
  readonly version: string;
};

export type Inertia = {
  readonly setViewData: (viewData: props) => Inertia;
  readonly shareProps: (sharedProps: props) => Inertia;
  readonly setStatusCode: (statusCode: number) => Inertia;
  readonly setHeaders: (headers: Record<string, string>) => Inertia;
  readonly render: (Page: Page) => Promise<Response>;
  readonly redirect: (url: string) => Response;
};

declare global {
  namespace Express {
    export interface Request {
      Inertia: Inertia;
    }
  }
}

declare module "express-session" {
  interface SessionData {
    xInertiaCurrentComponent: string | undefined;
  }
}

export {};
