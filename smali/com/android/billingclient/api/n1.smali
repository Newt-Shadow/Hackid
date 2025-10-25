.class public final synthetic Lcom/android/billingclient/api/n1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/billingclient/api/e;

.field public final synthetic b:Lc2/r;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/e;Lc2/r;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/n1;->a:Lcom/android/billingclient/api/e;

    iput-object p2, p0, Lcom/android/billingclient/api/n1;->b:Lc2/r;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/billingclient/api/n1;->a:Lcom/android/billingclient/api/e;

    iget-object v1, p0, Lcom/android/billingclient/api/n1;->b:Lc2/r;

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/e;->U(Lc2/r;)V

    return-void
.end method
