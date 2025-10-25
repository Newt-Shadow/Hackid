.class public final Lyb/h$a;
.super Lzb/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyb/h;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lyb/h;

.field final synthetic b:Lcom/yandex/metrica/impl/ob/i;


# direct methods
.method constructor <init>(Lyb/h;Lcom/yandex/metrica/impl/ob/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lyb/h$a;->a:Lyb/h;

    .line 2
    .line 3
    iput-object p2, p0, Lyb/h$a;->b:Lcom/yandex/metrica/impl/ob/i;

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
    .locals 4

    .line 1
    iget-object v0, p0, Lyb/h$a;->a:Lyb/h;

    .line 2
    .line 3
    invoke-static {v0}, Lyb/h;->a(Lyb/h;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/android/billingclient/api/d;->j(Landroid/content/Context;)Lcom/android/billingclient/api/d$a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lyb/d;

    .line 12
    .line 13
    invoke-direct {v1}, Lyb/d;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/d$a;->e(Lc2/o;)Lcom/android/billingclient/api/d$a;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/android/billingclient/api/d$a;->c()Lcom/android/billingclient/api/d$a;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/android/billingclient/api/d$a;->a()Lcom/android/billingclient/api/d;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "BillingClient\n          \u2026                 .build()"

    .line 29
    .line 30
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    new-instance v1, Lyb/a;

    .line 34
    .line 35
    iget-object v2, p0, Lyb/h$a;->b:Lcom/yandex/metrica/impl/ob/i;

    .line 36
    .line 37
    iget-object v3, p0, Lyb/h$a;->a:Lyb/h;

    .line 38
    .line 39
    invoke-direct {v1, v2, v0, v3}, Lyb/a;-><init>(Lcom/yandex/metrica/impl/ob/i;Lcom/android/billingclient/api/d;Lcom/yandex/metrica/impl/ob/j;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/d;->r(Lc2/g;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method
