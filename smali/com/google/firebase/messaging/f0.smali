.class public final synthetic Lcom/google/firebase/messaging/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm6/c;


# instance fields
.field public final synthetic a:Lcom/google/firebase/messaging/g0;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/messaging/g0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/f0;->a:Lcom/google/firebase/messaging/g0;

    return-void
.end method


# virtual methods
.method public final a(Lm6/Task;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/f0;->a:Lcom/google/firebase/messaging/g0;

    invoke-static {v0, p1}, Lcom/google/firebase/messaging/g0;->a(Lcom/google/firebase/messaging/g0;Lm6/Task;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
