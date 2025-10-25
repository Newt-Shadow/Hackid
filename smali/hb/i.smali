.class public final synthetic Lhb/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lhb/l;

.field public final synthetic b:Landroid/view/MotionEvent;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lhb/l;Landroid/view/MotionEvent;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhb/i;->a:Lhb/l;

    iput-object p2, p0, Lhb/i;->b:Landroid/view/MotionEvent;

    iput-wide p3, p0, Lhb/i;->c:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lhb/i;->a:Lhb/l;

    iget-object v1, p0, Lhb/i;->b:Landroid/view/MotionEvent;

    iget-wide v2, p0, Lhb/i;->c:J

    invoke-static {v0, v1, v2, v3}, Lhb/l;->e(Lhb/l;Landroid/view/MotionEvent;J)V

    return-void
.end method
