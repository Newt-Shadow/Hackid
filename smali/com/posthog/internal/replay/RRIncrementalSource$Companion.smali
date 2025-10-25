.class public final Lcom/posthog/internal/replay/RRIncrementalSource$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/posthog/internal/replay/RRIncrementalSource;
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
    invoke-direct {p0}, Lcom/posthog/internal/replay/RRIncrementalSource$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromValue(I)Lcom/posthog/internal/replay/RRIncrementalSource;
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
    sget-object p1, Lcom/posthog/internal/replay/RRIncrementalSource;->CustomElement:Lcom/posthog/internal/replay/RRIncrementalSource;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_1
    sget-object p1, Lcom/posthog/internal/replay/RRIncrementalSource;->AdoptedStyleSheet:Lcom/posthog/internal/replay/RRIncrementalSource;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :pswitch_2
    sget-object p1, Lcom/posthog/internal/replay/RRIncrementalSource;->Selection:Lcom/posthog/internal/replay/RRIncrementalSource;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :pswitch_3
    sget-object p1, Lcom/posthog/internal/replay/RRIncrementalSource;->StyleDeclaration:Lcom/posthog/internal/replay/RRIncrementalSource;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :pswitch_4
    sget-object p1, Lcom/posthog/internal/replay/RRIncrementalSource;->Drag:Lcom/posthog/internal/replay/RRIncrementalSource;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :pswitch_5
    sget-object p1, Lcom/posthog/internal/replay/RRIncrementalSource;->Log:Lcom/posthog/internal/replay/RRIncrementalSource;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :pswitch_6
    sget-object p1, Lcom/posthog/internal/replay/RRIncrementalSource;->Font:Lcom/posthog/internal/replay/RRIncrementalSource;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :pswitch_7
    sget-object p1, Lcom/posthog/internal/replay/RRIncrementalSource;->CanvasMutation:Lcom/posthog/internal/replay/RRIncrementalSource;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :pswitch_8
    sget-object p1, Lcom/posthog/internal/replay/RRIncrementalSource;->StyleSheetRule:Lcom/posthog/internal/replay/RRIncrementalSource;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :pswitch_9
    sget-object p1, Lcom/posthog/internal/replay/RRIncrementalSource;->MediaInteraction:Lcom/posthog/internal/replay/RRIncrementalSource;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :pswitch_a
    sget-object p1, Lcom/posthog/internal/replay/RRIncrementalSource;->TouchMove:Lcom/posthog/internal/replay/RRIncrementalSource;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :pswitch_b
    sget-object p1, Lcom/posthog/internal/replay/RRIncrementalSource;->Input:Lcom/posthog/internal/replay/RRIncrementalSource;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :pswitch_c
    sget-object p1, Lcom/posthog/internal/replay/RRIncrementalSource;->ViewportResize:Lcom/posthog/internal/replay/RRIncrementalSource;

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :pswitch_d
    sget-object p1, Lcom/posthog/internal/replay/RRIncrementalSource;->Scroll:Lcom/posthog/internal/replay/RRIncrementalSource;

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :pswitch_e
    sget-object p1, Lcom/posthog/internal/replay/RRIncrementalSource;->MouseInteraction:Lcom/posthog/internal/replay/RRIncrementalSource;

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :pswitch_f
    sget-object p1, Lcom/posthog/internal/replay/RRIncrementalSource;->MouseMove:Lcom/posthog/internal/replay/RRIncrementalSource;

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :pswitch_10
    sget-object p1, Lcom/posthog/internal/replay/RRIncrementalSource;->Mutation:Lcom/posthog/internal/replay/RRIncrementalSource;

    .line 55
    .line 56
    :goto_0
    return-object p1

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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
