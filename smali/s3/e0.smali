.class public final synthetic Ls3/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:Ls3/f0$g;


# direct methods
.method public synthetic constructor <init>(Ls3/f0$g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls3/e0;->a:Ls3/f0$g;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget-object v0, p0, Ls3/e0;->a:Ls3/f0$g;

    invoke-static {v0, p1, p2}, Ls3/f0;->d(Ls3/f0$g;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
