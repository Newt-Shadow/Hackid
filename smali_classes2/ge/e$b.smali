.class public final Lge/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lge/e;->a(Lge/d;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lge/d;


# direct methods
.method public constructor <init>(Lge/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lge/e$b;->a:Lge/d;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2

    .line 1
    new-instance v0, Lge/e$a;

    .line 2
    .line 3
    iget-object v1, p0, Lge/e$b;->a:Lge/d;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lge/e$a;-><init>(Lge/d;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method
