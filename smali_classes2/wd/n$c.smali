.class public final Lwd/n$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwd/n;->b(Lwd/d;Lad/e;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkotlin/jvm/internal/c0;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/c0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwd/n$c;->a:Lkotlin/jvm/internal/c0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public emit(Ljava/lang/Object;Lad/e;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p2, p0, Lwd/n$c;->a:Lkotlin/jvm/internal/c0;

    .line 2
    .line 3
    iput-object p1, p2, Lkotlin/jvm/internal/c0;->a:Ljava/lang/Object;

    .line 4
    .line 5
    new-instance p1, Lxd/a;

    .line 6
    .line 7
    invoke-direct {p1, p0}, Lxd/a;-><init>(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    throw p1
.end method
