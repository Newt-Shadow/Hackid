.class public final synthetic Lu8/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lid/a;


# instance fields
.field public final synthetic a:Lu8/y0;


# direct methods
.method public synthetic constructor <init>(Lu8/y0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu8/y;->a:Lu8/y0;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lu8/y;->a:Lu8/y0;

    invoke-static {v0}, Lu8/a0;->g(Lu8/y0;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
