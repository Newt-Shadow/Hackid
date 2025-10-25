.class public final Lcom/yandex/metrica/impl/ob/Db;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwb/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lwb/a;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    const-string v0, "No App Set ID library"

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p2, p1}, Lwb/a;->a(Ljava/lang/Throwable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
