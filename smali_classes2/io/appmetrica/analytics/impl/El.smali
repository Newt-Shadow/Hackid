.class public final Lio/appmetrica/analytics/impl/El;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Gl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/appmetrica/analytics/impl/Gl;

    .line 5
    .line 6
    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Gl;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/appmetrica/analytics/impl/El;->a:Lio/appmetrica/analytics/impl/Gl;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/internal/IdentifiersResult;)Lio/appmetrica/analytics/StartupParamsItem;
    .locals 4

    .line 1
    new-instance v0, Lio/appmetrica/analytics/StartupParamsItem;

    .line 2
    .line 3
    iget-object v1, p1, Lio/appmetrica/analytics/internal/IdentifiersResult;->id:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lio/appmetrica/analytics/impl/El;->a:Lio/appmetrica/analytics/impl/Gl;

    .line 6
    .line 7
    iget-object v3, p1, Lio/appmetrica/analytics/internal/IdentifiersResult;->status:Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    sget-object v2, Lio/appmetrica/analytics/impl/Fl;->a:[I

    .line 13
    .line 14
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    aget v2, v2, v3

    .line 19
    .line 20
    packed-switch v2, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    sget-object v2, Lio/appmetrica/analytics/StartupParamsItemStatus;->UNKNOWN_ERROR:Lio/appmetrica/analytics/StartupParamsItemStatus;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :pswitch_0
    sget-object v2, Lio/appmetrica/analytics/StartupParamsItemStatus;->FORBIDDEN_BY_CLIENT_CONFIG:Lio/appmetrica/analytics/StartupParamsItemStatus;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :pswitch_1
    sget-object v2, Lio/appmetrica/analytics/StartupParamsItemStatus;->FEATURE_DISABLED:Lio/appmetrica/analytics/StartupParamsItemStatus;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :pswitch_2
    sget-object v2, Lio/appmetrica/analytics/StartupParamsItemStatus;->NETWORK_ERROR:Lio/appmetrica/analytics/StartupParamsItemStatus;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :pswitch_3
    sget-object v2, Lio/appmetrica/analytics/StartupParamsItemStatus;->INVALID_VALUE_FROM_PROVIDER:Lio/appmetrica/analytics/StartupParamsItemStatus;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :pswitch_4
    sget-object v2, Lio/appmetrica/analytics/StartupParamsItemStatus;->PROVIDER_UNAVAILABLE:Lio/appmetrica/analytics/StartupParamsItemStatus;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :pswitch_5
    sget-object v2, Lio/appmetrica/analytics/StartupParamsItemStatus;->OK:Lio/appmetrica/analytics/StartupParamsItemStatus;

    .line 42
    .line 43
    :goto_0
    iget-object p1, p1, Lio/appmetrica/analytics/internal/IdentifiersResult;->errorExplanation:Ljava/lang/String;

    .line 44
    .line 45
    invoke-direct {v0, v1, v2, p1}, Lio/appmetrica/analytics/StartupParamsItem;-><init>(Ljava/lang/String;Lio/appmetrica/analytics/StartupParamsItemStatus;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-object v0

    .line 49
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
