declare module '@apiverve/babynamegenerator' {
  export interface babynamegeneratorOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface babynamegeneratorResponse {
    status: string;
    error: string | null;
    data: BabyNameGeneratorData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface BabyNameGeneratorData {
      count: number | null;
      names: Name[];
  }
  
  interface Name {
      firstName:  null | string;
      middleName: null | string;
      fullName:   null | string;
      avatar:     null | string;
  }

  export default class babynamegeneratorWrapper {
    constructor(options: babynamegeneratorOptions);

    execute(callback: (error: any, data: babynamegeneratorResponse | null) => void): Promise<babynamegeneratorResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: babynamegeneratorResponse | null) => void): Promise<babynamegeneratorResponse>;
    execute(query?: Record<string, any>): Promise<babynamegeneratorResponse>;
  }
}
