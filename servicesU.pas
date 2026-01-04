unit servicesU;

interface

type
  TOpResultType = (rtSuccess, rtWarning, rtError);

  TOpResult = record
    ResultType: TOpResultType;
    Message: string;
    ErrorCode: Integer; // opsiyonel
    class function Success(const AMsg: string = ''): TOpResult; static;
    class function Warning(const AMsg: string): TOpResult; static;
    class function Error(const AMsg: string; ACode: Integer = 0): TOpResult; static;
  end;



implementation


class function TOpResult.Success(const AMsg: string): TOpResult;
begin
  Result.ResultType := rtSuccess;
  Result.Message := AMsg;
  Result.ErrorCode := 0;
end;

class function TOpResult.Warning(const AMsg: string): TOpResult;
begin
  Result.ResultType := rtWarning;
  Result.Message := AMsg;
  Result.ErrorCode := 0;
end;

class function TOpResult.Error(const AMsg: string; ACode: Integer): TOpResult;
begin
  Result.ResultType := rtError;
  Result.Message := AMsg;
  Result.ErrorCode := ACode;
end;

end.
