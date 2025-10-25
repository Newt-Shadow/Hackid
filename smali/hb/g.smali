.class public final synthetic Lhb/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgc/e;


# instance fields
.field public final synthetic a:Lhb/l;


# direct methods
.method public synthetic constructor <init>(Lhb/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhb/g;->a:Lhb/l;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;Lid/l;)Lgc/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lhb/g;->a:Lhb/l;

    invoke-static {v0, p1, p2}, Lhb/l;->h(Lhb/l;Landroid/view/MotionEvent;Lid/l;)Lgc/b;

    move-result-object p1

    return-object p1
.end method
