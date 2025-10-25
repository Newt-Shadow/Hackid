.class public Lcom/posthog/internal/PostHogRemoteConfigResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
.end annotation


# instance fields
.field private final hasFeatureFlags:Ljava/lang/Boolean;

.field private final sessionRecording:Ljava/lang/Object;

.field private final surveys:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/posthog/internal/PostHogRemoteConfigResponse;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Boolean;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/posthog/internal/PostHogRemoteConfigResponse;->sessionRecording:Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Lcom/posthog/internal/PostHogRemoteConfigResponse;->surveys:Ljava/lang/Object;

    .line 5
    iput-object p3, p0, Lcom/posthog/internal/PostHogRemoteConfigResponse;->hasFeatureFlags:Ljava/lang/Boolean;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 6
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    .line 7
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 8
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 9
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/posthog/internal/PostHogRemoteConfigResponse;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public final getHasFeatureFlags()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/internal/PostHogRemoteConfigResponse;->hasFeatureFlags:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSessionRecording()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/internal/PostHogRemoteConfigResponse;->sessionRecording:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSurveys()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/internal/PostHogRemoteConfigResponse;->surveys:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method
