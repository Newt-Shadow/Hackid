.class public final Lio/appmetrica/analytics/impl/y0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(Ljava/lang/String;)Lio/appmetrica/analytics/impl/x0;
    .locals 10

    .line 15
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    sget-object v2, Lrd/d;->b:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 16
    new-instance p0, Lio/appmetrica/analytics/impl/x0;

    const-string v1, "apiKey"

    .line 17
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "packageName"

    .line 18
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 19
    sget-object v1, Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;->Companion:Lio/appmetrica/analytics/internal/CounterConfigurationReporterType$Companion;

    const-string v2, "reporterType"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/internal/CounterConfigurationReporterType$Companion;->fromStringValue(Ljava/lang/String;)Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;

    move-result-object v6

    const-string v1, "processID"

    .line 20
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v1, "processSessionID"

    .line 21
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v1, "errorEnvironment"

    .line 22
    invoke-static {v0, v1}, Lio/appmetrica/analytics/coreutils/internal/parsing/JsonUtils;->optStringOrNull(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v3, p0

    .line 23
    invoke-direct/range {v3 .. v9}, Lio/appmetrica/analytics/impl/x0;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static a(Lio/appmetrica/analytics/impl/x0;)Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "apiKey"

    .line 2
    iget-object v2, p0, Lio/appmetrica/analytics/impl/x0;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "packageName"

    .line 4
    iget-object v2, p0, Lio/appmetrica/analytics/impl/x0;->b:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "reporterType"

    .line 6
    iget-object v2, p0, Lio/appmetrica/analytics/impl/x0;->c:Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;

    .line 7
    invoke-virtual {v2}, Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;->getStringValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "processID"

    .line 8
    iget v2, p0, Lio/appmetrica/analytics/impl/x0;->d:I

    .line 9
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "processSessionID"

    .line 10
    iget-object v2, p0, Lio/appmetrica/analytics/impl/x0;->e:Ljava/lang/String;

    .line 11
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "errorEnvironment"

    .line 12
    iget-object p0, p0, Lio/appmetrica/analytics/impl/x0;->f:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    .line 14
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lrd/d;->b:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method
