.class public final synthetic Lu8/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lid/a;


# instance fields
.field public final synthetic a:Lu8/a0;


# direct methods
.method public synthetic constructor <init>(Lu8/a0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu8/z;->a:Lu8/a0;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lu8/z;->a:Lu8/a0;

    invoke-static {v0}, Lu8/a0;->h(Lu8/a0;)Lu8/c0;

    move-result-object v0

    return-object v0
.end method
