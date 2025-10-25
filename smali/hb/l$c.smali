.class final Lhb/l$c;
.super Lkotlin/jvm/internal/n;
.source "SourceFile"

# interfaces
.implements Lid/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhb/l;-><init>(Landroid/content/Context;Lfb/b;Lgb/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic e:Lhb/l;


# direct methods
.method constructor <init>(Lhb/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lhb/l$c;->e:Lhb/l;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()Landroid/util/DisplayMetrics;
    .locals 1

    .line 1
    iget-object v0, p0, Lhb/l$c;->e:Lhb/l;

    .line 2
    .line 3
    invoke-static {v0}, Lhb/l;->k(Lhb/l;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lgb/o;->g(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lhb/l$c;->b()Landroid/util/DisplayMetrics;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
