.class public abstract Lcom/yandex/metrica/impl/ob/y6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/A6;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/y6$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/y6$a;

.field private final b:Lcom/yandex/metrica/d;

.field private final c:Lcom/yandex/metrica/impl/ob/A0;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/y6$a;Lcom/yandex/metrica/d;Lcom/yandex/metrica/impl/ob/A0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/y6;->a:Lcom/yandex/metrica/impl/ob/y6$a;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/y6;->c:Lcom/yandex/metrica/impl/ob/A0;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method abstract a(Lcom/yandex/metrica/impl/ob/H6;)V
.end method

.method public a(Ljava/lang/Throwable;Lcom/yandex/metrica/impl/ob/w6;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/y6;->a:Lcom/yandex/metrica/impl/ob/y6$a;

    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ob/y6$a;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/y6;->c:Lcom/yandex/metrica/impl/ob/A0;

    .line 3
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/A0;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/y6;->c:Lcom/yandex/metrica/impl/ob/A0;

    .line 4
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/A0;->b()Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    .line 5
    invoke-static {p1, p2, v2, v0, v1}, Lcom/yandex/metrica/impl/ob/I6;->a(Ljava/lang/Throwable;Lcom/yandex/metrica/impl/ob/w6;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/yandex/metrica/impl/ob/H6;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/y6;->a(Lcom/yandex/metrica/impl/ob/H6;)V

    :cond_0
    return-void
.end method
