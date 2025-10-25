.class public final Lyb/a$a;
.super Lzb/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyb/a;->onBillingSetupFinished(Lcom/android/billingclient/api/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lyb/a;

.field final synthetic b:Lcom/android/billingclient/api/h;


# direct methods
.method constructor <init>(Lyb/a;Lcom/android/billingclient/api/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lyb/a$a;->a:Lyb/a;

    .line 2
    .line 3
    iput-object p2, p0, Lyb/a$a;->b:Lcom/android/billingclient/api/h;

    .line 4
    .line 5
    invoke-direct {p0}, Lzb/f;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lyb/a$a;->a:Lyb/a;

    .line 2
    .line 3
    iget-object v1, p0, Lyb/a$a;->b:Lcom/android/billingclient/api/h;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lyb/a;->e(Lyb/a;Lcom/android/billingclient/api/h;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
