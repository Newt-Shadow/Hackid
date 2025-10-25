.class public final Lcom/posthog/internal/replay/RREventType$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/posthog/internal/replay/RREventType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/posthog/internal/replay/RREventType$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromValue(I)Lcom/posthog/internal/replay/RREventType;
    .locals 0

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    goto :goto_0

    .line 6
    :pswitch_0
    sget-object p1, Lcom/posthog/internal/replay/RREventType;->Plugin:Lcom/posthog/internal/replay/RREventType;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_1
    sget-object p1, Lcom/posthog/internal/replay/RREventType;->Custom:Lcom/posthog/internal/replay/RREventType;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :pswitch_2
    sget-object p1, Lcom/posthog/internal/replay/RREventType;->Meta:Lcom/posthog/internal/replay/RREventType;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :pswitch_3
    sget-object p1, Lcom/posthog/internal/replay/RREventType;->IncrementalSnapshot:Lcom/posthog/internal/replay/RREventType;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :pswitch_4
    sget-object p1, Lcom/posthog/internal/replay/RREventType;->FullSnapshot:Lcom/posthog/internal/replay/RREventType;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :pswitch_5
    sget-object p1, Lcom/posthog/internal/replay/RREventType;->Load:Lcom/posthog/internal/replay/RREventType;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :pswitch_6
    sget-object p1, Lcom/posthog/internal/replay/RREventType;->DomContentLoaded:Lcom/posthog/internal/replay/RREventType;

    .line 25
    .line 26
    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
