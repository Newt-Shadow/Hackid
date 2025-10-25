.class public final Lcom/posthog/internal/replay/RRMouseInteraction$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/posthog/internal/replay/RRMouseInteraction;
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
    invoke-direct {p0}, Lcom/posthog/internal/replay/RRMouseInteraction$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromValue(I)Lcom/posthog/internal/replay/RRMouseInteraction;
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
    sget-object p1, Lcom/posthog/internal/replay/RRMouseInteraction;->TouchCancel:Lcom/posthog/internal/replay/RRMouseInteraction;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_1
    sget-object p1, Lcom/posthog/internal/replay/RRMouseInteraction;->TouchEnd:Lcom/posthog/internal/replay/RRMouseInteraction;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :pswitch_2
    sget-object p1, Lcom/posthog/internal/replay/RRMouseInteraction;->TouchMoveDeparted:Lcom/posthog/internal/replay/RRMouseInteraction;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :pswitch_3
    sget-object p1, Lcom/posthog/internal/replay/RRMouseInteraction;->TouchStart:Lcom/posthog/internal/replay/RRMouseInteraction;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :pswitch_4
    sget-object p1, Lcom/posthog/internal/replay/RRMouseInteraction;->Blur:Lcom/posthog/internal/replay/RRMouseInteraction;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :pswitch_5
    sget-object p1, Lcom/posthog/internal/replay/RRMouseInteraction;->Focus:Lcom/posthog/internal/replay/RRMouseInteraction;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :pswitch_6
    sget-object p1, Lcom/posthog/internal/replay/RRMouseInteraction;->DblClick:Lcom/posthog/internal/replay/RRMouseInteraction;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :pswitch_7
    sget-object p1, Lcom/posthog/internal/replay/RRMouseInteraction;->ContextMenu:Lcom/posthog/internal/replay/RRMouseInteraction;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :pswitch_8
    sget-object p1, Lcom/posthog/internal/replay/RRMouseInteraction;->Click:Lcom/posthog/internal/replay/RRMouseInteraction;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :pswitch_9
    sget-object p1, Lcom/posthog/internal/replay/RRMouseInteraction;->MouseDown:Lcom/posthog/internal/replay/RRMouseInteraction;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :pswitch_a
    sget-object p1, Lcom/posthog/internal/replay/RRMouseInteraction;->MouseUp:Lcom/posthog/internal/replay/RRMouseInteraction;

    .line 37
    .line 38
    :goto_0
    return-object p1

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
