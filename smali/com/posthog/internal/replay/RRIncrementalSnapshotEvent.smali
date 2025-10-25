.class public final Lcom/posthog/internal/replay/RRIncrementalSnapshotEvent;
.super Lcom/posthog/internal/replay/RREvent;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/posthog/internal/replay/RRIncrementalMutationData;J)V
    .locals 1

    .line 2
    sget-object v0, Lcom/posthog/internal/replay/RREventType;->IncrementalSnapshot:Lcom/posthog/internal/replay/RREventType;

    .line 3
    invoke-direct {p0, v0, p2, p3, p1}, Lcom/posthog/internal/replay/RREvent;-><init>(Lcom/posthog/internal/replay/RREventType;JLjava/lang/Object;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/posthog/internal/replay/RRIncrementalMutationData;JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/posthog/internal/replay/RRIncrementalSnapshotEvent;-><init>(Lcom/posthog/internal/replay/RRIncrementalMutationData;J)V

    return-void
.end method
