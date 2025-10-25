.class final Lyb/b$b;
.super Lkotlin/jvm/internal/n;
.source "SourceFile"

# interfaces
.implements Lid/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyb/b;->b(Lcom/android/billingclient/api/h;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic e:Lyb/b;

.field final synthetic f:Ljava/util/Map;

.field final synthetic g:Ljava/util/Map;


# direct methods
.method constructor <init>(Lyb/b;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lyb/b$b;->e:Lyb/b;

    iput-object p2, p0, Lyb/b$b;->f:Ljava/util/Map;

    iput-object p3, p0, Lyb/b$b;->g:Ljava/util/Map;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 7

    .line 1
    sget-object v0, Lcom/yandex/metrica/impl/ob/g;->a:Lcom/yandex/metrica/impl/ob/g;

    .line 2
    .line 3
    iget-object v1, p0, Lyb/b$b;->f:Ljava/util/Map;

    .line 4
    .line 5
    iget-object v2, p0, Lyb/b$b;->g:Ljava/util/Map;

    .line 6
    .line 7
    iget-object v3, p0, Lyb/b$b;->e:Lyb/b;

    .line 8
    .line 9
    invoke-static {v3}, Lyb/b;->f(Lyb/b;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    iget-object v4, p0, Lyb/b$b;->e:Lyb/b;

    .line 14
    .line 15
    invoke-static {v4}, Lyb/b;->g(Lyb/b;)Lcom/yandex/metrica/impl/ob/j;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-interface {v4}, Lcom/yandex/metrica/impl/ob/j;->e()Lcom/yandex/metrica/impl/ob/l;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    const-string v5, "utilsProvider.billingInfoManager"

    .line 24
    .line 25
    invoke-static {v4, v5}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/4 v5, 0x0

    .line 29
    const/16 v6, 0x10

    .line 30
    .line 31
    invoke-static/range {v0 .. v6}, Lcom/yandex/metrica/impl/ob/g;->a(Lcom/yandex/metrica/impl/ob/g;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/l;Lzb/g;I)V

    .line 32
    .line 33
    .line 34
    sget-object v0, Lxc/t;->a:Lxc/t;

    .line 35
    .line 36
    return-object v0
.end method
