.class public Lcom/posthog/internal/replay/RREvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
.end annotation


# instance fields
.field private final data:Ljava/lang/Object;

.field private final timestamp:J

.field private final type:Lcom/posthog/internal/replay/RREventType;


# direct methods
.method public constructor <init>(Lcom/posthog/internal/replay/RREventType;JLjava/lang/Object;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/posthog/internal/replay/RREvent;->type:Lcom/posthog/internal/replay/RREventType;

    .line 3
    iput-wide p2, p0, Lcom/posthog/internal/replay/RREvent;->timestamp:J

    .line 4
    iput-object p4, p0, Lcom/posthog/internal/replay/RREvent;->data:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/posthog/internal/replay/RREventType;JLjava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/posthog/internal/replay/RREvent;-><init>(Lcom/posthog/internal/replay/RREventType;JLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getData()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/internal/replay/RREvent;->data:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/posthog/internal/replay/RREvent;->timestamp:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getType()Lcom/posthog/internal/replay/RREventType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/internal/replay/RREvent;->type:Lcom/posthog/internal/replay/RREventType;

    .line 2
    .line 3
    return-object v0
.end method
