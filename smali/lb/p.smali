.class public final synthetic Llb/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Llb/q;

.field public final synthetic b:Lcom/posthog/PostHogEvent;


# direct methods
.method public synthetic constructor <init>(Llb/q;Lcom/posthog/PostHogEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llb/p;->a:Llb/q;

    iput-object p2, p0, Llb/p;->b:Lcom/posthog/PostHogEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Llb/p;->a:Llb/q;

    iget-object v1, p0, Llb/p;->b:Lcom/posthog/PostHogEvent;

    invoke-static {v0, v1}, Llb/q;->a(Llb/q;Lcom/posthog/PostHogEvent;)V

    return-void
.end method
