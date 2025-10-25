.class public final Ltd/t1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lad/i$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltd/t1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field static final synthetic a:Ltd/t1$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ltd/t1$b;

    invoke-direct {v0}, Ltd/t1$b;-><init>()V

    sput-object v0, Ltd/t1$b;->a:Ltd/t1$b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
