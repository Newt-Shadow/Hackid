.class public final synthetic Lu/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lu/f$e;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lu/f$e;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu/h;->a:Lu/f$e;

    iput p2, p0, Lu/h;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lu/h;->a:Lu/f$e;

    iget v1, p0, Lu/h;->b:I

    invoke-static {v0, v1}, Lu/f$e;->a(Lu/f$e;I)V

    return-void
.end method
