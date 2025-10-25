.class public final synthetic Lcom/google/firebase/messaging/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm6/k;


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/u;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lm6/Task;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/u;->a:Ljava/lang/String;

    check-cast p1, Lcom/google/firebase/messaging/h1;

    invoke-static {v0, p1}, Lcom/google/firebase/messaging/FirebaseMessaging;->a(Ljava/lang/String;Lcom/google/firebase/messaging/h1;)Lm6/Task;

    move-result-object p1

    return-object p1
.end method
